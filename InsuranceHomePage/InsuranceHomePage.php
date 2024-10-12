<!DOCTYPE html>
<html lang="zh-HK">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Home Page</title>
    <link rel="stylesheet" href="../navbar/NavBar.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="script.js" defer></script>
</head>
<body>

<nav>
        <div class="wrapper">
            <div class="logo"><a href="../homePage/homePage.html">Legend Motor</a></div>
            <input type="radio" name="slider" id="menu-btn">
            <input type="radio" name="slider" id="close-btn">
            <ul class="nav-links">
                <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
                <li><a href="../homePage/homePage.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li>
                    <a href="../PurchasePage/PurchasePage.html" class="desktop-item">Vehicles</a>
                    <input type="checkbox" id="Vehicles">
                    <label for="showDrop" class="mobile-item">Vehicles</label>
                    <ul class="drop-menu">
                        <li><a href="../PurchasePage/PurchasePage.html">Online Purchase</a></li>
                        <li><a href="#">Vehicle Components</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="desktop-item">Insurance Services</a>
                    <input type="checkbox" id="Insurance Services">
                    <label for="showMega" class="mobile-item">Insurance Services</label>
                    <div class="mega-box">
                        <div class="content">
                            <div class="row">
                                <img src="./src/img4.png" alt="">
                            </div>

                            <div class="row">
                                <header>Insurance Quotation Request</header>
                                <ul class="mega-links">
                                    <li><a href="#">Comprehensive Insurance</a></li>
                                    <li><a href="#">Third-party Insurance</a></li>
                                    <li><a href="#">Liability Insurance</a></li>

                                </ul>
                            </div>
                            <div class="row">
                                <header>Quotation Overview</header>
                                <ul class="mega-links">
                                    <li><a href="#">View All Quotes</a></li>
                                    <li><a href="#">Policy Terms and Conditions</a></li>
                                    <li><a href="#">FAQs</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li><a href="#">Feedback</a></li>
                <!-- Add Shopping Cart Icon -->
                <li class="nav-icon">
                    <a href="#">
                        <i class="fas fa-shopping-cart"></i>
                    </a>
                </li>

                <!-- Add User Icon -->
                <li class="nav-icon">
                    <a href="../registerPage/registerPage.html">
                        <i class="fas fa-user"></i>
                    </a>
                </li>
            </ul>
            <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
        </div>
    </nav>

<div class="container">
    <div class="hero" id="heroSection">
        <h1>Welcome to Legend Motor</h1>
        <p>Explore the best insurance plans for your motorcycle and enjoy peace of mind.</p>
        <button class="cta-button" id="applyButton">Apply for Insurance Now</button>
    </div>
    
    <div class="form-container hidden" id="insuranceForm">
    <h2>Select Insurance Type</h2>
    <select id="insuranceType">
        <option value="comprehensive">Comprehensive Insurance</option>
        <option value="third-party">Third-party Insurance</option>
        <option value="liability">Liability Insurance</option>
    </select>

    <h3>Vehicle Information</h3>
    <form id="vehicleForm">
        <input type="text" placeholder="Vehicle Year" required>
        <input type="text" placeholder="CC" required>
        <button type="submit">Submit</button>
    </form>
</div>
</div>

<footer>
    <p>Contact Information | Social Media Links | Privacy Policy | Terms of Use</p>
</footer>

</body>
</html>