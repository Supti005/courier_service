<head>
<?php 
    include 'server/api.php';  
    include 'pages/assets.php';  

    $setting = getAllSettings();
    
    // Check if $setting is not null and contains data
    if ($setting && mysqli_num_rows($setting) > 0) {
        $res = mysqli_fetch_assoc($setting);

        $header = $res['header_image'] ?? ''; // Using null coalescing operator to handle null value
        $header_src = "server/uploads/settings/".$header;

        $subheader = $res['sub_image'] ?? '';
        $subheader_src = "server/uploads/settings/".$subheader;

        $about = $res['about_image'] ?? '';
        $about_src = "server/uploads/settings/".$about;

        $background_image = $res['background_image'] ?? '';
        $background_image_src = "server/uploads/settings/".$background_image;
    } else {
        // Set default values or handle the case when $setting is null or contains no data
        $header_src = '';
        $subheader_src = '';
        $about_src = '';
        $background_image_src = '';
    }
?>

    <title>Rapid Route Services</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
</head>
