touch /usr/share/pam-configs/faillock
echo "Name: Enforce failed login attempt counter
Default: no
Priority: 0
Auth-Type: Primary
Auth:
 [default=die] pam_faillock.so authfail
 sufficient pam_faillock.so authsucc" >> /usr/share/pam-configs/faillock
touch /usr/share/pam-configs/faillock_notify
echo "Name: Notify on failed login attempts
Default: no
Priority: 1024
Auth-Type: Primary
Auth:
 requisite pam_faillock.so preauth" >> /usr/share/pam-configs/faillock_notify 
pam-auth-update