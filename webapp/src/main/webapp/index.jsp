<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduMetrics | Student Analytics Dashboard</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root { --primary: #4e73df; --secondary: #1cc88a; --dark: #1a1c23; }
        body { background-color: #f8f9fc; font-family: 'Inter', sans-serif; }
        .sidebar { background: var(--dark); min-height: 100vh; color: white; transition: all 0.3s; }
        .card { border: none; border-radius: 15px; box-shadow: 0 0.15rem 1.75rem 0 rgba(58, 59, 69, 0.1); transition: transform 0.2s; }
        .card:hover { transform: translateY(-5px); }
        .stat-card { border-left: 5px solid var(--primary); }
        .chart-container { position: relative; height: 300px; }
        .btn-action { border-radius: 20px; padding: 5px 15px; font-size: 0.8rem; }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block sidebar py-4 animate__animated animate__fadeInLeft">
            <div class="text-center mb-4">
                <i class="fas fa-user-graduate fa-3x text-info mb-2"></i>
                <h5>EduMetrics AI</h5>
            </div>
            <ul class="nav flex-column px-3">
                <li class="nav-item mb-2"><a class="nav-link text-white active" href="#"><i class="fas fa-home me-2"></i> Dashboard</a></li>
                <li class="nav-item mb-2"><a class="nav-link text-white-50" href="#"><i class="fas fa-users me-2"></i> Students</a></li>
                <li class="nav-item mb-2"><a class="nav-link text-white-50" href="#"><i class="fas fa-chart-line me-2"></i> Performance</a></li>
                <li class="nav-item mb-2"><a class="nav-link text-white-50" href="#"><i class="fas fa-cog me-2"></i> Settings</a></li>
            </ul>
        </nav>

        <main class="col-md-10 ms-sm-auto px-md-4 py-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom animate__animated animate__fadeIn">
                <h1 class="h2">Student Analytics Dashboard</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <button type="button" class="btn btn-sm btn-outline-primary me-2"><i class="fas fa-plus"></i> Add Student</button>
                    <button type="button" class="btn btn-sm btn-primary shadow" onclick="window.print()"><i class="fas fa-download"></i> Generate PDF</button>
                </div>
            </div>

            <div class="row mb-4 animate__animated animate__fadeInUp">
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card stat-card h-100 py-2">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Students</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">1,250</div>
                                </div>
                                <div class="col-auto"><i class="fas fa-users fa-2x text-gray-300"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card h-100 py-2" style="border-left: 5px solid #1cc88a;">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Avg. Attendance</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">94.2%</div>
                                </div>
                                <div class="col-auto"><i class="fas fa-calendar-check fa-2x text-gray-300"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-lg-7 animate__animated animate__zoomIn">
                    <div class="card p-4">
                        <h6 class="fw-bold mb-3">Enrollment Trend (Year-wise)</h6>
                        <div class="chart-container">
                            <canvas id="enrollmentChart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 animate__animated animate__zoomIn animate__delay-1s">
                    <div class="card p-4">
                        <h6 class="fw-bold mb-3">Performance Distribution</h6>
                        <div class="chart-container">
                            <canvas id="performanceChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card shadow mb-4 animate__animated animate__fadeInUp">
                <div class="card-header py-3 d-flex justify-content-between align-items-center">
                    <h6 class="m-0 font-weight-bold text-primary">Student Database Records</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover" id="studentTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Year</th>
                                    <th>Major</th>
                                    <th>GPA</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>#ST-001</td>
                                    <td>Bibek Sahu</td>
                                    <td>4th Year</td>
                                    <td>DevOps Eng.</td>
                                    <td>3.9</td>
                                    <td><span class="badge bg-success">Active</span></td>
                                    <td>
                                        <button class="btn btn-sm btn-info text-white"><i class="fas fa-edit"></i></button>
                                        <button class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.bootstrap5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>

<script>
    // 1. Enrollment Line Chart
    const ctx1 = document.getElementById('enrollmentChart').getContext('2d');
    new Chart(ctx1, {
        type: 'line',
        data: {
            labels: ['2022', '2023', '2024', '2025', '2026'],
            datasets: [{
                label: 'New Students',
                data: [400, 600, 850, 1100, 1250],
                borderColor: '#4e73df',
                backgroundColor: 'rgba(78, 115, 223, 0.1)',
                fill: true,
                tension: 0.4
            }]
        }
    });

    // 2. Performance Pie Chart
    const ctx2 = document.getElementById('performanceChart').getContext('2d');
    new Chart(ctx2, {
        type: 'doughnut',
        data: {
            labels: ['A Grade', 'B Grade', 'C Grade'],
            datasets: [{
                data: [55, 30, 15],
                backgroundColor: ['#1cc88a', '#4e73df', '#f6c23e']
            }]
        }
    });

    // 3. DataTable with Excel/PDF Export
    $(document).ready(function() {
        $('#studentTable').DataTable({
            dom: 'Bfrtip',
            buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
            pageLength: 5
        });
    });
</script>

</body>
</html>
