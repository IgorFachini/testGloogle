<template>
  <q-page class="flex flex-center">
    <img
      alt="Quasar logo"
      src="~assets/quasar-logo-full.svg"
    >
    <q-btn
      label="home"
      @click="$router.push('/home')"
    />
  </q-page>
</template>

<script>
export default {
  name: 'PageIndex'
}
</script>
