<!DOCTYPE html>
<html>

<head>
    <title>Product Insert</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>

<body>
    <!-- comment -->
    <br><br>
    <div class="container"><a href="../admin" class="btn btn-primary">Go Back</a></div><br><br>

    <div class="container mt-4">

        <h1 class="col-12">Product Insert</h1>
        <form method="post" action="insert"">
            <div class="row mb-3">
                <div class="col-md-4">
                    <label for="title">Name:</label>
                    <input type="text" name="name" class="form-control">
                </div>
                <div class="col-md-8">
                    <label for="sdescription">Description:</label>
                    <textarea name="description" rows="5" class="form-control"></textarea>
                </div>
                <div class="col-md-6">
                    <label for="size">Size:</label>
                    <input type="text" name="size" class="form-control">
                </div>

                <div class="col-md-12">
                    <label for="price">Price</label>
                    <input type="text" name="price" class="form-control">
                </div>

                <div class="col-md-12">
                    <label for="category">Category</label>
                    <select name="category" class="form-control">
                        <option value="t_shirt">T-Shirt</option>
                        <option value="shirt">Shirt</option>
                        <option value="trousers">Trousers</option>
                        <option value="shorts">Shorts</option>
                    </select>
                </div>

                <!-- Image upload field -->
                <div class="col-md-12">
                    <label for="image">Image</label>
                    <input type="file" name="image" class="form-control-file">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>