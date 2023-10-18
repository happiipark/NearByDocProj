<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h3>Modal Example</h3>
  <p>Click on the button to open the modal.</p>
  
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
    Open modal
  </button>
</div>

<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <select name="time" id="time">
  <option value="12:00am">12:00am</option>
	<option value="12:30am">12:30am</option>
	<option value="1:00am">1:00am</option>
	<option value="1:30am">1:30am</option>
	<option value="2:00am">2:00am</option>
	<option value="2:30am">2:30am</option>
	<option value="3:00am">3:00am</option>
	<option value="3:30am">3:30am</option>
	<option value="4:00am">4:00am</option>
	<option value="4:30am">4:30am</option>
	<option value="5:00am">5:00am</option>
	<option value="5:30am">5:30am</option>
	<option value="6:00am">6:00am</option>
	<option value="6:30am">6:30am</option>
	<option value="7:00am">7:00am</option>
	<option value="7:30am">7:30am</option>
	<option value="8:00am">8:00am</option>
	<option value="8:30am">8:30am</option>
	<option value="9:00am">9:00am</option>
	<option value="9:30am">9:30am</option>
	<option value="10:00am">10:00am</option>
	<option value="10:30am">10:30am</option>
	<option value="11:00am">11:00am</option>
	<option value="11:30am">11:30am</option>
	<option value="12:00pm">12:00pm</option>
	<option value="12:30pm">12:30pm</option>
	<option value="1:00pm">1:00pm</option>
	<option value="1:30pm">1:30pm</option>
	<option value="2:00pm">2:00pm</option>
	<option value="2:30pm">2:30pm</option>
	<option value="3:00pm">3:00pm</option>
	<option value="3:30pm">3:30pm</option>
	<option value="4:00pm">4:00pm</option>
	<option value="4:30pm">4:30pm</option>
	<option value="5:00pm">5:00pm</option>
	<option value="5:30pm">5:30pm</option>
	<option value="6:00pm">6:00pm</option>
	<option value="6:30pm">6:30pm</option>
	<option value="7:00pm">7:00pm</option>
	<option value="7:30pm">7:30pm</option>
	<option value="8:00pm">8:00pm</option>
	<option value="8:30pm">8:30pm</option>
	<option value="9:00pm">9:00pm</option>
	<option value="9:30pm">9:30pm</option>
	<option value="10:00pm">10:00pm</option>
	<option value="10:30pm">10:30pm</option>
	<option value="11:00pm">11:00pm</option>
	<option value="11:30pm">11:30pm</option>
</select>

      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>


</body>
</html>

</body>
</html>