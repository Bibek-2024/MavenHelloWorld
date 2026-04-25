<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Intelligence | Bibek Kumar Sahu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <style>
        body {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }
        .glass-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 3rem;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
        }
        .btn-custom {
            background: #00d2ff;
            background: linear-gradient(to right, #3a7bd5, #00d2ff);
            border: none;
            color: white;
            padding: 12px 30px;
            font-weight: bold;
            transition: transform 0.3s;
        }
        .btn-custom:hover {
            transform: scale(1.1);
            color: white;
        }
        .status-dot {
            height: 12px;
            width: 12px;
            background-color: #28a745;
            border-radius: 50%;
            display: inline-block;
            margin-right: 8px;
            box-shadow: 0 0 10px #28a745;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 text-center glass-card animate__animated animate__zoomIn">
                <h1 class="display-4 fw-bold mb-3 animate__animated animate__fadeInDown animate__delay-1s">
                    System Administration & DevOps
                </h1>
                <p class="lead mb-4 animate__animated animate__fadeInUp animate__delay-1s">
                    Enterprise Infrastructure Automation | Cloud Migration | CI/CD Excellence
                </p>
                
                <div class="mb-5 animate__animated animate__pulse animate__infinite">
                    <span class="status-dot"></span> Pipeline Status: <strong class="text-info">ACTIVE</strong>
                </div>

                <div class="d-grid gap-2 d-md-block">
                    <a href="https://github.com/Bibek-2024" target="_blank" class="btn btn-custom btn-lg shadow animate__animated animate__bounceInLeft animate__delay-2s">
                        View Projects
                    </a>
                    <button class="btn btn-outline-light btn-lg ms-md-3 animate__animated animate__bounceInRight animate__delay-2s">
                        Infrastructure Logs
                    </button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>

