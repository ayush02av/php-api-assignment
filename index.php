<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PHP Assignment By Ayush Verma</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		*{
			outline: none;
			text-decoration: none;
			list-style: none;
			margin: 0;
			padding: 0;
		}

		body{
			font-size: 20px;
			overflow-x: hidden;
		}

		html{
			scroll-behavior: smooth;
		}

		::-webkit-scrollbar{
			display: none;
		}

		#container{
			width: 100%;
			min-height: 100vh;
			font-size: 30px;
			display: grid;
			place-items: center;
		}

		table{
			width: 100%;
		}

		th, td{
			border: 1px solid black;
			padding: 10px;
		}
	</style>
</head>
<body>

	<?php
	include_once 'config.php';
	?>

	<?php

	echo '<div id="container">';
	if (!isset($_GET['source'])) {
		echo '
		<form>
			Search :
			<input type="search" name="source" id="search" autocomplete="off">
			<br>
			<input type="submit" name="submit" value="search">
		</form>';
	}else{
		echo "<a href=".$root.">Go Back To Search Page</a>";
		$keyword = $_GET['source'];
		$keyword_search_query = 'SELECT * FROM keyword_table WHERE keyword="'.$keyword.'"';

		$mysqli_db = new mysqli($db_hostname, $db_username, $db_password, $db_dbname);

		$result = $mysqli_db->query($keyword_search_query);

		if($mysqli_db->connect_errno){
			die($mysqli_db->connect_errno);
		}else{
			$result = $result->fetch_assoc();
			if($result != NULL){
				$table_name = $result['table_name'];
				echo "<div>";
				echo "Table Name : ".$table_name;

				$table_columns = $result['columns_to_display'];
				$table_columns = str_replace("[", "", $table_columns);
				$table_columns = str_replace("]", "", $table_columns);

				$table_columns_query = 'SELECT ';

				$table_columns = explode(", ", $table_columns);

				foreach ($table_columns as $table_column) {
					$table_columns_query .= $table_column.", ";
				}

				$table_columns_query = substr($table_columns_query, 0, strlen($table_columns_query)-2) . " FROM " . $table_name;

				$result = $mysqli_db->query($table_columns_query);

				echo "<table>";

				echo "<tr>";
				foreach ($table_columns as $table_column) {
					echo "<th>" . $table_column . "</th>";
				}
				echo "</tr>";

				while($row = $result->fetch_assoc()){
					echo "<tr>";
					foreach ($table_columns as $table_column) {
						echo "<td>" . $row[$table_column] . "</td>";
					}
					echo "</tr>";
				}
				echo "</table>";

				echo "</div>";

			}else{
				echo "Not a valid keyword...<br>Switching back to search page";
				echo "
				<script>
		                setTimeout(function(){
		            window.location.href = '".$root."';
		         }, 1200);
		        </script>";
			}
		}


	}
	echo '</div>';

	?>


	<script type="text/javascript">
		document.getElementById('search').focus();
	</script>

</body>
</html>