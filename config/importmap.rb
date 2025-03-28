# Pin npm packages by running ./bin/importmap

pin "application"

# pin "@rails/actioncable", to: "actioncable.esm.js"
# pin "@rails/activestorage", to: "activestorage.esm.js"
# pin "@rails/actiontext", to: "actiontext.esm.js"
# pin "trix"

pin "turbo", to: "turbo.min.js"
pin "stimulus", to: "stimulus.min.js"
pin_all_from "app/javascript/controllers", under: "controllers"
