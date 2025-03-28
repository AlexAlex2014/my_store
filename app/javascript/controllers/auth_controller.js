// app/javascript/controllers/auth_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["form"]

    submitForm(event) {
        event.preventDefault()
        const formData = new FormData(this.formTarget)
        fetch(this.formTarget.action, {
            method: 'POST',
            body: formData
        }).then(response => {
            if (response.ok) {
                Turbo.visit("/dashboard") // Пример перехода после успешной аутентификации
            } else {
                alert("Ошибка аутентификации!")
            }
        })
    }
}
