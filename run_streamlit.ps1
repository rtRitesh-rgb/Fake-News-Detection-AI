<#
Simple PowerShell wrapper to launch the Streamlit app using the same
Python interpreter that will run the module. Saves typing and avoids
PATH issues with the `streamlit` console script.
#>

# Move to script directory so relative paths in app.py work
Set-Location -LiteralPath "$PSScriptRoot"

# Run Streamlit via the module runner (avoids needing streamlit.exe on PATH)
python -m streamlit run app.py

# (Optional) to run in background, replace last line with:
# Start-Process -FilePath (Get-Command python).Source -ArgumentList '-m','streamlit','run','app.py' -NoNewWindow
