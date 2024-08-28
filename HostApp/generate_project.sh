mise install tuist@4.20.0
mise use tuist@4.20.0
touch dummy.swift
echo "import ViewHosting; @main extension ViewHostingApp {}" > App.swift
tuist generate --no-open
