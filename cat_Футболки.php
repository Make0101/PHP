<!DOCTYPE html>
<html lang="ru">
<meta charset="utf-8">
<link rel="stylesheet" href="cat_pages.css">
<?php require "induction.php";?>
<head>
	<title></title>
</head>
<body>
	<div class="upper">
		<a href="index.php"><button class="back__btn">Назад &#8629;</button></a>
		<span class="about">В данном разделе представлены футболки</span>
	</div>
<div>
<?php
			$info = mysqli_query($induction, "SELECT id, price, price_discount, price_promo, name FROM `model` WHERE id = ANY(SELECT pid FROM `main_category` WHERE category_id = ANY (SELECT id FROM `category` WHERE category = 'Футболки')) AND in_stock ='yes'");
			$result = mysqli_query($induction, "SELECT link, alt FROM imgs WHERE id = ANY (SELECT imgs_id FROM `main_imgs` WHERE pid = ANY (SELECT pid FROM `main_category` WHERE category_id = (SELECT id FROM `category` WHERE category = 'Футболки') AND pid = ANY (SELECT id FROM `model` WHERE in_stock ='yes')))");
				while($cat = mysqli_fetch_assoc($result)){
								$insert = mysqli_fetch_assoc($info);
		?>

					<div class="cat__style">
						<img src="/БД/<?php echo $cat['link'];?>.jpg" width="300px" alt="/БД/<?php echo $cat['alt'];?>">
						<div class="cat__info"> 
							<span class="name"> <a href="product.php"> <?php echo $insert['name']; ?> </a> </span>
							<span class="price"> <?php echo $insert['price']; ?>&#8381; </span> 
						</div>
					</div>

		<?php
				}
				$result= NULL;
		?>
</div>
</body>
</html>