-- originally based on halocardina's script at https://gist.github.com/halocaridina/99466e4b1d08e57fb9dd
-- AnyConnect now refered to as targetApp
set targetApp to "Cisco AnyConnect Secure Mobility Client"

-- Determine if AnyConnect is currently running
tell application "System Events"
	set processExists to exists process targetApp
end tell

-- Close connection if running; else start connection and fill in password
if processExists is true then
	tell application targetApp
		quit
	end tell
else
	tell application targetApp
		activate
	end tell

	tell application "System Events"
		-- Wait for first window to open. Do nothing.
		repeat until (window 1 of process targetApp exists)
			delay 1
		end repeat

		-- You may need to uncomment below if your OpenConnect implementation requires a keystroke to accept the default VPN
		delay 2
		tell process targetApp
			keystroke return
		end tell

		-- Wait for second window to open and then automatically enter password extracted from your Keychain
		repeat until (window 2 of process targetApp exists)
			delay 8
		end repeat
		tell process targetApp
			-- This is where the the password in the Keychain is accessed for use as input rather than being hardcoded as plain text in other versions of this script out in the wild
			delay 6
			keystroke "YOUR_USERNAME" as text
			keystroke tab
			set inString to "cisco_vpn"
			set PSWD to do shell script "/usr/bin/security find-generic-password -wl " & quoted form of inString
			keystroke PSWD as text
			keystroke return
		end tell

		-- Autoclick on "Accept" of AnyConnect Banner window. If you have no welcome banner that needs acceptance, comment out these lines to the first "end tell" below
		repeat until (window "Cisco AnyConnect - Banner" of process targetApp exists)
			delay 2
		end repeat
		tell process targetApp
			keystroke return
		end tell

	end tell
end if
