// Input fields
const firstName = document.getElementById('firstName');
const lastName = document.getElementById('lastName');
const password = document.getElementById('password');
const confirmPassword = document.getElementById('confirmPassword');
const email = document.getElementById('email');
// Form
const form = document.getElementById('UpdateUsersForm');
// Validation colors
const green = '#4CAF50';
const red = '#F44336';

// Handle form
form.addEventListener('submit', function(event) {
	// Prevent default behaviour

	if (validatePassword() == null) {
		event.preventDefault();
	}
	if (validateFirstName() == null) {
		console.log("name")
	}
	if (validateFirstName() == null || validateLastName() == null
			|| validatePassword() == null || validateConfirmPassword() == null
			|| validateEmail() == null) {
		//event.preventDefault();
	}
});

// Validators
function validateFirstName() {
	// check if is empty
	if (checkIfEmpty(firstName))
		return null;
	// is if it has only letters
	if (!checkIfOnlyLetters(firstName))
		return null;
	if (!meetLength(firstName, 3, 20))
		return null;
	return true;
}
function validateLastName() {
	// check if is empty
	if (checkIfEmpty(lastName))
		return null;
	// is if it has only letters
	if (!checkIfOnlyLetters(lastName))
		return null;
	if (!meetLength(lastName, 3, 20))
		return null;
	return true;
}
function validatePassword() {
	// Empty check
	if (checkIfEmpty(password))
		return null;
	// Must of in certain length
	if (!meetLength(password, 6, 20))
		return null;
	// check password against our character set
	// 1- a
	// 2- a 1
	// 3- A a 1
	// 4- A a 1 @
	if (!containsCharacters(password, 3))
		return null;
	return true;
}
function validateConfirmPassword() {
	if (password.className !== 'valid') {
		setInvalid(confirmPassword, 'Fjalekalimi duhet te jete i pranueshem');
		return null;
	}
	// If they match
	if (password.value !== confirmPassword.value) {
		setInvalid(confirmPassword, 'Fjalekalimet duhet te perputhen');
		return null;
	} else {
		setValid(confirmPassword);
	}
	return true;
}
function validateEmail() {
	if (checkIfEmpty(email))
		return null;
	if (!containsCharacters(email, 5))
		return null;
	return true;
}
// Utility 
function checkIfEmpty(field) {
	if (isEmpty(field.value.trim())) {
		// set field invalid
		setInvalid(field, `${field.name} nuk lejohet bosh`);
		return true;
	} else {
		// set field valid
		setValid(field);
		return false;
	}
}
function isEmpty(value) {
	if (value === '')
		return true;
	return false;
}
function setInvalid(field, message) {
	field.className = 'invalid';
	field.nextElementSibling.innerHTML = message;
	field.nextElementSibling.style.color = red;
}
function setValid(field) {
	field.className = 'valid';
	field.nextElementSibling.innerHTML = '';
	// field.nextElementSibling.style.color = green;
}
function checkIfOnlyLetters(field) {
	if (/^[a-zA-Z ]+$/.test(field.value)) {
		setValid(field);
		return true;
	} else {
		setInvalid(field, `${field.name} duhet te permbaje vetem shkronja`);
		return false;
	}
}
function meetLength(field, minLength, maxLength) {
	if (field.value.length >= minLength && field.value.length < maxLength) {
		setValid(field);
		return true;
	} else if (field.value.length < minLength) {
		setInvalid(field,
				`${field.name} duhet te jete se paku ${minLength} karaktere`);
		return false;
	} else {
		setInvalid(field,
				`${field.name} duhet te jete me pak ${maxLength} karaktere`);
		return false;
	}
}
function containsCharacters(field, code) {
	let regEx;
	switch (code) {
	case 1:
		// letters
		regEx = /(?=.*[a-zA-Z])/;
		return matchWithRegEx(regEx, field,
				'Duhet te kete se paku nje shkronje');
	case 2:
		// letter and numbers
		regEx = /(?=.*\d)(?=.*[a-zA-Z])/;
		return matchWithRegEx(regEx, field,
				'Duhet te kete se paku nje shkronje dhe nje numer');
	case 3:
		// uppercase, lowercase and number
		regEx = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/;
		return matchWithRegEx(regEx, field,
				'Duhet te kete se paku nje shkronje te madhe, nje te vogel dhe nje numer');
	case 4:
		// uppercase, lowercase, number and special char
		regEx = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)/;
		return matchWithRegEx(
				regEx,
				field,
				'Duhet te kete se paku nje shkronje te madhe, nje te vogel, nje numer dhe nje karakter special');
	case 5:
		// Email pattern
		regEx = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return matchWithRegEx(regEx, field,
				'Duhet te jete forma e duhur e email-it');
	default:
		return false;
	}
}
function matchWithRegEx(regEx, field, message) {
	if (field.value.match(regEx)) {
		setValid(field);
		return true;
	} else {
		setInvalid(field, message);
		return false;
	}
}