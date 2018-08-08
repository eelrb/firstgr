provider "aws" {
  access_key = "${var.ACCESS_KEY}"
  secret_key = "${var.SECRET_KEY}"
  region     = "us-east-1"
}

resource "aws_instance" "example-test" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}



output "ip" {
  value = "${aws_instance.example-test.public_ip}"
}



module "blee" {
  source   = "./user"
  name     = "blee"

  // base64-encoded PGP public key (NOT PEM FORMAT)
  pgp_key = "mQENBFtrJeoBCADIUkSpP4ckZMiVuO9hWb+QN9nqrOpkcqctnMCP1CHNefF7rcHgADzucInADAoBtW4hkE+3IG2bPWV8aGMzSchobRZ++4cmRgi8C3FkOyFfrKG3OyMB0OeoaBVAL6iXCWTRWVy97yPiVm7ATdLLGzO7WOFAhqhox1ulDF2xzQ14wgexyRKTEfvDeK5Z90lZ0JaNy7acBxL4SDxgtQWfmhX4kvgXu9F7hPcpL9/ZySdgSH/kCLvnVFlCgUZBEayC2VovGFi060m+tkCsh/x3pmSzRJqRI5V7Ehtb60+ks91riGNE9A8zaPMiZXFp9nPa3B3eMPicBCUSgxorBG4qWCJPABEBAAG0LUJyaWFuIExlZSAobGVuZ3RoMjA0OHlhaG9vKSA8ZWVscmJAeWFob28uY29tPokBVAQTAQgAPhYhBOkKt9ij136IwXr8+EokPm/TWe2DBQJbayXqAhsDBQkDw7iABQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEEokPm/TWe2DaWsH/3blyAyywfKfaYtWtou8EhJBEKzZJZMnKYFmZMdzqpxdX7TYdeblBVZT4ZijUZQPAJcitXLh6s16sRK9sAY8pFa05mLPb95argbGdcPrq+ia1vfAuuIwYrMZ83uWCHDhSqOLUqkJSKBNvzdEuGn1Ha/j8km2TQszgcOiPnmz25phT4gDPYuMOqHwxgPA/N0QVvOpDrpQMwirq4QZC3+QI5PzbRpK7ASrxRMkgh3eLQvXl3bvJniUiIiU8+xD6e9UJly6FdDEVGgtvDZ4HSYauWJq4Io3xhEsIA+SpGsoBupfv8XaMsynFlrts4DwShjb4D5oZfr1mgs+YzaToD9QPde5AQ0EW2sl6gEIAKeV2XmIgwAdzOd7Caowwm5n01tJGDywcQoQaWXYlG1PbnR4LUpU4IZM1Vvy0rZmHmSVhnPdDb6wEpJuuJEwcQpD+02ayEY5qp1JErnCOpBljpx6Xp8IFfXG2U0XKJFo3kW+Bs4XrvyzW39dgP8VCwk8ne2uQ5J8vAYB2H+XvnhN8fqRI+NlLWy5NyFaaSRkQ+EQ4scer1up/NAX2D2Ak+TDEiNkg43yDL6/yOYq9MCgoaEY/4rGlOFMLPOm5v730yKbb/H4Pw5bcJituPHrExnSUfZvcjlugUhdlM4Qoz1RFBSimMaBkL6ctYEd1pAxZtx6DFqaGPncPimx2S58vY8AEQEAAYkBPAQYAQgAJhYhBOkKt9ij136IwXr8+EokPm/TWe2DBQJbayXqAhsMBQkDw7iAAAoJEEokPm/TWe2Ddx0H/jw3WFzOjaoeQWj0YRa6P/s6Z5mOHVZPuXjxOpD18mUIi6gz3B7oCraDIopJl7kKUhclcuQ5HiD7GMBkiHYkyCI4QkVsxM9KnzlWhegzQ+8dKZMM6SyFx7ONtMHeKYElSmaavp9WC1+2+pcy9O7uKAoNAen/dno8V5764dAxqjcnnc78b6ZwpaDi4GmGK1yFHama349d7UVBHUbHkdTBWVdtD8MVEWUflVMPkoX5oAgKeIWKEWg9b86iCKq19khJDBT3EgOn+HMiPejU1cFgRzX3HtuOdSUP40eCM/u0jZR26k+K+2mJ5pZkybkmyqoSTwEh/HoUJNek1Suzzj5hh0A==v/0N"

 gui_access  = "true"
}

output "blee-accesskey" {
  value = "${module.blee.access_key_id}"
}

output "blee-secretkey" {
  value = "${module.blee.secret_access_key}"
}

output "blee-password" {
  value = "${module.blee.password}"
}

