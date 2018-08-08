module "blee" {
  source   = "./user"
  name     = "blee"

  // base64-encoded PGP public key (NOT PEM FORMAT)
  pgp_key = "mQENBFtrJeoBCADIUkSpP4ckZMiVuO9hWb+QN9nqrOpkcqctnMCP1CHNefF7rcHg
ADzucInADAoBtW4hkE+3IG2bPWV8aGMzSchobRZ++4cmRgi8C3FkOyFfrKG3OyMB
0OeoaBVAL6iXCWTRWVy97yPiVm7ATdLLGzO7WOFAhqhox1ulDF2xzQ14wgexyRKT
EfvDeK5Z90lZ0JaNy7acBxL4SDxgtQWfmhX4kvgXu9F7hPcpL9/ZySdgSH/kCLvn
VFlCgUZBEayC2VovGFi060m+tkCsh/x3pmSzRJqRI5V7Ehtb60+ks91riGNE9A8z
aPMiZXFp9nPa3B3eMPicBCUSgxorBG4qWCJPABEBAAG0LUJyaWFuIExlZSAobGVu
Z3RoMjA0OHlhaG9vKSA8ZWVscmJAeWFob28uY29tPokBVAQTAQgAPhYhBOkKt9ij
136IwXr8+EokPm/TWe2DBQJbayXqAhsDBQkDw7iABQsJCAcCBhUKCQgLAgQWAgMB
Ah4BAheAAAoJEEokPm/TWe2DaWsH/3blyAyywfKfaYtWtou8EhJBEKzZJZMnKYFm
ZMdzqpxdX7TYdeblBVZT4ZijUZQPAJcitXLh6s16sRK9sAY8pFa05mLPb95argbG
dcPrq+ia1vfAuuIwYrMZ83uWCHDhSqOLUqkJSKBNvzdEuGn1Ha/j8km2TQszgcOi
Pnmz25phT4gDPYuMOqHwxgPA/N0QVvOpDrpQMwirq4QZC3+QI5PzbRpK7ASrxRMk
gh3eLQvXl3bvJniUiIiU8+xD6e9UJly6FdDEVGgtvDZ4HSYauWJq4Io3xhEsIA+S
pGsoBupfv8XaMsynFlrts4DwShjb4D5oZfr1mgs+YzaToD9QPde5AQ0EW2sl6gEI
AKeV2XmIgwAdzOd7Caowwm5n01tJGDywcQoQaWXYlG1PbnR4LUpU4IZM1Vvy0rZm
HmSVhnPdDb6wEpJuuJEwcQpD+02ayEY5qp1JErnCOpBljpx6Xp8IFfXG2U0XKJFo
3kW+Bs4XrvyzW39dgP8VCwk8ne2uQ5J8vAYB2H+XvnhN8fqRI+NlLWy5NyFaaSRk
Q+EQ4scer1up/NAX2D2Ak+TDEiNkg43yDL6/yOYq9MCgoaEY/4rGlOFMLPOm5v73
0yKbb/H4Pw5bcJituPHrExnSUfZvcjlugUhdlM4Qoz1RFBSimMaBkL6ctYEd1pAx
Ztx6DFqaGPncPimx2S58vY8AEQEAAYkBPAQYAQgAJhYhBOkKt9ij136IwXr8+Eok
Pm/TWe2DBQJbayXqAhsMBQkDw7iAAAoJEEokPm/TWe2Ddx0H/jw3WFzOjaoeQWj0
YRa6P/s6Z5mOHVZPuXjxOpD18mUIi6gz3B7oCraDIopJl7kKUhclcuQ5HiD7GMBk
iHYkyCI4QkVsxM9KnzlWhegzQ+8dKZMM6SyFx7ONtMHeKYElSmaavp9WC1+2+pcy
9O7uKAoNAen/dno8V5764dAxqjcnnc78b6ZwpaDi4GmGK1yFHama349d7UVBHUbH
kdTBWVdtD8MVEWUflVMPkoX5oAgKeIWKEWg9b86iCKq19khJDBT3EgOn+HMiPejU
1cFgRzX3HtuOdSUP40eCM/u0jZR26k+K+2mJ5pZkybkmyqoSTwEh/HoUJNek1Suz
zj5hh0A=
=v/0N"

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
