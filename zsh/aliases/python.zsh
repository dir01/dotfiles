alias 'grepy'='grep -n --include="*.py"'
alias 'fakemail'='sudo python -m smtpd -n -c DebuggingServer localhost:25'
alias 'editpostactivate'='nano $VIRTUAL_ENV/bin/postactivate'

function pipinstall {
	pip install -r `find . -name requirements.txt | head -n1`
}
