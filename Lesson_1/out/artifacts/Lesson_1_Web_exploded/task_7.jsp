<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<form class="container" action="/task7" method="post">
    <div class="row mt-2">
        <div class="col">
            <label class="form-label">NAME:</label>
        </div>
        <div class="col">
            <input class="form-control" type="text" name="name">
        </div>
    </div>
    <div class="row mt-2">
        <div class="col">
            <label class="form-label">SURNAME:</label>
        </div>
        <div class="col">
            <input class="form-control" type="text" name="surname">
        </div>
    </div>
    <div class="row mt-2">
        <div class="col">
            <label class="form-label">CLUB:</label>
        </div>
        <div class="col">
            <select class="form-select" name="club">
                <option>Real Madrid CF</option>
                <option>Atalanta</option>
                <option>Real Sociedad</option>
            </select>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col">
            <label class="form-label">SALARY:</label>
        </div>
        <div class="col">
            <input class="form-control" type="number" name="salary">
        </div>
    </div>
    <div class="row mt-2">
        <div class="col">
            <label class="form-label">TRANSFER PRICE:</label>
        </div>
        <div class="col">
            <input class="form-control" type="number" name="price">
        </div>
    </div>
    <button class="btn btn-Primary mt-2" type="submit">SUBMIT EXAM</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
