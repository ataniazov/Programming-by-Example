astyle --style=1tbs --indent=spaces=4 --attach-closing-while --indent-switches --indent-labels --indent-preproc-block --indent-preproc-define --indent-preproc-cond --indent-col1-comments --min-conditional-indent=0 --break-blocks --pad-oper --pad-header --unpad-paren --delete-empty-lines --align-pointer=middle --break-one-line-headers --add-braces --convert-tabs --max-code-length=80 --verbose --lineend=linux --recursive  "./*.c,*.h"

:: astyle -A10 -s4 -xV -S -L -xW -w -xw -Y -m0 -f -p -H -U -xe -k2 -xb -j -c  -xC80-v -z2 -r "./*.c,*.h"

:: Brace Style Options
:: --style=1tbs / --style=otbs / -A10

:: Tab Options
:: --indent=spaces / --indent=spaces=# / -s#

:: Brace Modify Options
:: --attach-closing-while / -xV

:: Indentation Options
:: --indent-switches / -S
:: ?? --indent-after-parens / -xU
:: ?? --indent-continuation=# / -xt#
:: --indent-labels / -L
:: --indent-preproc-block / -xW
:: --indent-preproc-define / -w
:: --indent-preproc-cond / -xw
:: --indent-col1-comments / -Y
:: --min-conditional-indent=# / -m#
:: --max-continuation-indent=# / -M#

:: Padding Options
:: --break-blocks / -f
:: --pad-oper / -p
:: :: --pad-comma / -xg
:: ?? --pad-header / -H
:: --unpad-paren / -U
:: --delete-empty-lines / -xe

:: :: --align-pointer=type   / -k1
:: --align-pointer=middle / -k2
:: :: --align-pointer=name   / -k3

:: :: --align-reference=type   / -W1
:: :: --align-reference=none   / -W0
:: :: --align-reference=middle / -W2
:: :: --align-reference=name   / -W3

:: Formatting Options
:: --break-one-line-headers / -xb
:: --add-braces / -j

:: ?? --break-return-type      / -xB
:: :: --break-return-type-decl / -xD

:: :: --attach-return-type      / -xf
:: ?? --attach-return-type-decl / -xh

:: ?? --convert-tabs / -c

:: --max-code-length=#   / -xC#
:: ?? --break-after-logical / -xL

:: ?? --mode=c
:: :: --mode=cs
:: :: --mode=java

:: Other Options
:: :: --suffix=####
:: ?? --suffix=none / -n
:: ?? --recursive / -r / -R
:: :: --dry-run
:: ?? --exclude=####
:: ?? --ignore-exclude-errors / -i
:: :: --ignore-exclude-errors-x / -xi
:: :: --errors-to-stdout / -X
:: :: --preserve-date / -Z
:: --verbose / -v
:: :: --formatted / -Q
:: :: --quiet / -q
:: :: --lineend=windows / -z1
:: --lineend=linux   / -z2
:: :: --lineend=macold  / -z3
