window.Parsley.addValidator("dateiso",{validateString:function(t){return/^(\d{4})\D?(0[1-9]|1[0-2])\D?([12]\d|0[1-9]|3[01])$/.test(t)},priority:256});