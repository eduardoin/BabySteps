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

  button.addEventListener('click', toggleDrawer)
  shader.addEventListener('click', deactivateDrawer)
}

export { initDrawer };
