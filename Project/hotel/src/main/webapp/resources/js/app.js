function submitForm(formName) {
		document.getElementById(formName).submit();
	}


function myFunction1() {
    var input, filter, inpB, inpA;
    input = document.getElementById("style").value;
    inpB = document.getElementById("bedd");
    inpA = document.getElementById("air");
    if (input == '4') {
        inpB.value = "2";
        inpA.value = "3";
    }
    else if (input == '3') {
        inpB.value = "3";
        inpA.value = "2";
    }
    else if (input == '2') {
        inpB.value = "2";
        inpA.value = "2";
    }
    else if (input == '1') {
        inpB.value = "1";
        inpA.value = "1";
    }
}