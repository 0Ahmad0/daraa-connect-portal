const password = document.querySelector("#password");
const togglePassword = document.querySelector("#toggle-password");
const routerMessage = document.querySelector("#router-message");

togglePassword.addEventListener("click", () => {
  const isVisible = password.type === "text";
  password.type = isVisible ? "password" : "text";
  togglePassword.ariaPressed = String(!isVisible);
  togglePassword.ariaLabel = isVisible ? "إظهار كلمة المرور" : "إخفاء كلمة المرور";
  password.focus();
});

if (routerMessage.textContent.trim() && !routerMessage.textContent.trim().startsWith("$(")) {
  routerMessage.hidden = false;
}

document.querySelector("#year").textContent = new Date().getFullYear();
