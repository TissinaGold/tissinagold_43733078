document.getElementById("addBtn").addEventListener("click", function () {
  let name = document.getElementById("name").value;
  let age = document.getElementById("age").value;
  let role = document.getElementById("role").value;

  if (name && age && role) {
    let table = document.getElementById("employeeTable").getElementsByTagName("tbody")[0];
    let newRow = table.insertRow();

    let cell1 = newRow.insertCell(0);
    let cell2 = newRow.insertCell(1);
    let cell3 = newRow.insertCell(2);

    cell1.innerText = name;
    cell2.innerText = age;
    cell3.innerText = role;

    // clear inputs
    document.getElementById("name").value = "";
    document.getElementById("age").value = "";
    document.getElementById("role").value = "";
  }
});

document.getElementById("removeBtn").addEventListener("click", function () {
  let table = document.getElementById("employeeTable").getElementsByTagName("tbody")[0];
  let rowCount = table.rows.length;
  if (rowCount > 0) {
    table.deleteRow(rowCount - 1); // remove last row
  }
});


