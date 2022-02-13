
<header>

        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <a class="logo">
        <h1 class="logo-text"><span>BulSU</span>MC</h1>
    </a>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav">
        <?php if (isset($_SESSION['username'])): ?>
            <li>
            <li><a href="<?php echo BASE_URL . '/admin/backup.php'; ?>" class="backup"><b>Back up Database</b></a></li>
            <li><a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout"><b>Logout</b></a></li>
           
                
            </li>
        <?php endif; ?>
    </ul>
</header>

<script>
    $('.backup').on('click',function (e) {
        e.preventDefault();
        var self = $(this);
        console.log(self.data('title'));
        Swal.fire({
            title: 'Are you sure you want to backup database?',
            text: "The database will be downloaded in a SQL file",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                    'Downloaded!',
                    'Your file has been downloaded.',
                    'success'
                )
              location.href = self.attr('href');
            }
        })


    })
    </script> 



<script>
    $('.logout').on('click',function (e) {
        e.preventDefault();
        var self = $(this);
        console.log(self.data('title'));
        Swal.fire({
            title: 'Are you sure you want to logout?',
           
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                    
                )
              location.href = self.attr('href');
            }
        })

    })

</script>  