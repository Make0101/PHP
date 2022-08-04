<!DOCTYPE html>
<html lang="ru">
<meta charset="utf-8">
<link rel="stylesheet" href="main_style.css">
<?php require "induction.php";?>
<head>
	<title></title>
</head>
<body>
	<div class="cat">
		<?php
			$result = mysqli_query($induction, "SELECT * FROM `category` WHERE id = ANY (SELECT category_id FROM `main_category`)");
				while($cat = mysqli_fetch_assoc($result)){
		?>
		<button class="cat__style"><a class="cat__hrefs" href="cat_<?php echo $cat['category'];?>.php"> <?php echo $cat['category'];?></a></button>
					
		<?php
				}
				$result= NULL;
		?>
	</div>

</body>

</html>
