'use strict';
$(document).ready(function() {
    $('#clear').on('click', function() {
        $('#tryitForm1,  #tryitForm').bootstrapValidator("resetForm");
    });

    $('#tryitForm1').bootstrapValidator({
        fields: {
            firstName: {
                validators: {
                    notEmpty: {
                        message: 'Enter the first name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'input a valid Name'
                    }
                }
            },
            lastName: {
                validators: {
                    notEmpty: {
                        message: 'Enter the last name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'input a valid Name'
                    }
                }
            },
            fullname: {
                validators: {
                    notEmpty: {
                        message: 'Enter the full name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+\s[a-zA-Z]+$/,
                        message: 'input valid full name with space between firstName and lastName'
                    }
                }
            },
            address: {
                validators: {
                    notEmpty: {
                        message: 'Enter your address'
                    }
                }
            },
            password: {
                validators: {

                    notEmpty: {
                        message: 'Enter the password'
                    }
                }
            },
            confirmpassword: {
                validators: {
                    notEmpty: {
                        message: 'Confirm the password'
                    },
                    identical: {
                        field: 'password',
                        message: 'Please enter the same password as above'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Enter the email address'
                    },
                    regexp: {
                        regexp: /^\S+@\S{1,}\.\S{1,}$/,
                        message: 'The input is not a valid email address'
                    }
                }
            },
            username: {
                validators: {
                    notEmpty: {
                        message: 'Enter the email address'
                    },
                    regexp: {
                        regexp: /^\S+@\S{1,}\.\S{1,}$/,
                        message: 'The input is not a valid email address'
                    }
                }
            },
            cell: {
                validators: {
                    notEmpty: {
                        message: 'Enter the phone number'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'The phone number can only consist of numbers with 10 digits'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: 'Enter the phone number'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'The phone number can only consist of numbers with 10 digits'
                    }
                }
            },
            city: {
                validators: {
                	regexp: {
                    regexp: /^([a-zA-Z]+\s)*[a-zA-Z]+$/,
                    message: 'Invalid city name'
                },
                    notEmpty: {
                        message: 'City is required'
                    }
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'Gender is required'
                    }
                }
            },
           role: {
                validators: {
                    notEmpty: {
                        message: 'Role is required'
                    }
                }
            },
            pincode: {
                validators: {
                    notEmpty: {
                        message: 'Pincode number is required'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'Enter valid Pincode number upto 6 digits'
                    }
                }
            },
            activate: {
                validators: {
//                    notEmpty: {
//                        message: 'You have to activate your account'
//                    }
                }
            },
            status: {
                validators: {
//                    notEmpty: {
//                        message: 'You have to activate your account'
//                    }
                }
            },
            check_active: {
                validators: {
//                    notEmpty: {
//                        message: 'You have to active your account'
//                    }
                }
            },
            terms: {
                validators: {
                    notEmpty: {
                        message: 'You have to accept the terms and policies'
                    }
                }
            }
        },
        submitHandler: function(form) {
            if ($('#tryitForm1').valid()) {
                console.log("now we enable the submit button!");
            }
        }
    }).on('success.form.bv', function(e) {
        e.preventDefault();
        swal({
            title: "Success.",
            text: "Successfully Added",
            type: "success",
            allowOutsideClick: false
        }).then(function() {
            location.reload();
        });
    });

    $('#tryitForm').bootstrapValidator({
        fields: {
        	firstName: {
                validators: {
                    notEmpty: {
                        message: 'Enter the first name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'input a valid Name'
                    }
                }
            },
            lastName: {
                validators: {
                    notEmpty: {
                        message: 'Enter the last name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'input a valid Name'
                    }
                }
            },
            fullname: {
                validators: {
                    notEmpty: {
                        message: 'Enter the full name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+\s[a-zA-Z]+$/,
                        message: 'input valid full name with space between firstName and lastName'
                    }
                }
            },
            address: {
                validators: {
                    notEmpty: {
                        message: 'Enter your address'
                    }
                }
            },
            password: {
                validators: {

                    notEmpty: {
                        message: 'Enter the password'
                    }
                }
            },
            confirmpassword: {
                validators: {
                    notEmpty: {
                        message: 'Confirm the password'
                    },
                    identical: {
                        field: 'password',
                        message: 'Please enter the same password as above'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Enter the email address'
                    },
                    regexp: {
                        regexp: /^\S+@\S{1,}\.\S{1,}$/,
                        message: 'The input is not a valid email address'
                    }
                }
            },
            username: {
                validators: {
                    notEmpty: {
                        message: 'Enter the email address'
                    },
                    regexp: {
                        regexp: /^\S+@\S{1,}\.\S{1,}$/,
                        message: 'The input is not a valid email address'
                    }
                }
            },
            cell: {
                validators: {
                    notEmpty: {
                        message: 'Enter the phone number'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'The phone number can only consist of numbers with 10 digits'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: 'Enter the phone number'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'The phone number can only consist of numbers with 10 digits'
                    }
                }
            },
            city: {
                validators: {
                	regexp: {
                        regexp: /^([a-zA-Z]+\s)*[a-zA-Z]+$/,
                        message: 'Invalid city name'
                    },
                    notEmpty: {
                        message: 'City is required'
                    }
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'Gender is required'
                    }
                }
            },
            
            role: {
                validators: {
                    notEmpty: {
                        message: 'Role is required'
                    }
                }
            },
            pincode: {
                validators: {
                    notEmpty: {
                        message: 'Pincode number is required'
                    },
                    regexp: {
                    	regexp: /^[0-9]{10}$/,
                        message: 'Enter valid Pincode number upto 6 digits'
                    }
                }
            },
            activate: {
                validators: {
//                    notEmpty: {
//                        message: 'You have to activate your account'
//                    }
                }
            },
            status: {
                validators: {
//                    notEmpty: {
//                        message: 'You have to activate your account'
//                    }
                }
            },
            check_active: {
                validators: {
//                    notEmpty: {
//                        message: 'You have to active your account'
//                    }
                }
            },
            terms: {
                validators: {
                    notEmpty: {
                        message: 'You have to accept the terms and policies'
                    }
                }
            }
        },
        submitHandler: function(form) {
            if ($('#tryitForm').valid()) {
                console.log("now we enable the submit button!");
            }
        }
    });
});