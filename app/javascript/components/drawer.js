const initDrawer = () => {
  const drawer = document.querySelector('#drawer')
  const button = document.querySelector('#drawer-button')
  const shader = document.querySelector('#shader')

  const toggleDrawer = () => {
    drawer.classList.toggle('active')
    shader.classList.toggle('active')
  }

  const deactivateDrawer = () => {
    drawer.classList.remove('active')
    shader.classList.remove('active')
  }

  if (button) button.addEventListener('click', toggleDrawer)
  if (shader) shader.addEventListener('click', deactivateDrawer)
}

export { initDrawer };
