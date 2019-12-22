<template>
    <b-modal id="singup" hide-footer class="modal-stl">
        <b-form @submit="onSubmit" @reset="onReset">
            <b-form-group
                    id="input-group-1"
                    label="Email address:"
                    label-for="input-1"
                    description="We'll never share your email with anyone else."
            >
                <b-form-input
                        id="input-1"
                        v-model="form.email"
                        type="email"
                        required
                        placeholder="Enter email"
                ></b-form-input>
            </b-form-group>

            <b-form-group id="input-group-2" label="id:" label-for="input-2">
                <b-form-input
                        id="input-2"
                        v-model="form.id"
                        required
                        placeholder="Enter id"
                        :state="valid"
                ></b-form-input>
            </b-form-group>

            <b-form-group id="input-group-3" label="Password:" label-for="input-3">
                <b-form-input
                        id="input-3"
                        type="password"
                        v-model="form.pass"
                        required
                        placeholder="Enter pass"
                ></b-form-input>
            </b-form-group>

            <b-button type="submit" variant="outline-success">Submit</b-button>
            <b-button type="reset" variant="outline-secondary" class="ml-3">Reset</b-button>
        </b-form>
    </b-modal>
</template>

<script>
    import Vue from 'vue'

    import BootstrapVue from 'bootstrap-vue'

    import 'bootstrap/dist/css/bootstrap.css'
    import 'bootstrap-vue/dist/bootstrap-vue.css'

    Vue.use(BootstrapVue)

    // This imports all the layout components such as <b-container>, <b-row>, <b-col>:
    import { LayoutPlugin } from 'bootstrap-vue'
    Vue.use(LayoutPlugin)

    // This imports <b-modal> as well as the v-b-modal directive as a plugin:
    import { ModalPlugin } from 'bootstrap-vue'
    Vue.use(ModalPlugin)

    // This imports <b-card> along with all the <b-card-*> sub-components as a plugin:
    import { CardPlugin } from 'bootstrap-vue'
    Vue.use(CardPlugin)

    // This imports directive v-b-scrollspy as a plugin:
    import { VBScrollspyPlugin } from 'bootstrap-vue'
    Vue.use(VBScrollspyPlugin)

    // This imports the dropdown and table plugins
    import { DropdownPlugin, TablePlugin } from 'bootstrap-vue'

    Vue.use(DropdownPlugin)
    Vue.use(TablePlugin)

    export default {
        name: "singup",
        data() {
            return {
                form: {
                    email: '',
                    id: '',
                },
            }
        },
        methods: {
            onSubmit(evt) {
                evt.preventDefault()
                alert(JSON.stringify(this.form))
            },
            onReset(evt) {
                evt.preventDefault()
                // Reset our form values
                this.form.email = ''
                this.form.id = ''
                this.form.pass = ''
                // Trick to reset/clear native browser form validation state
                this.show = false
            }
        },
    }
</script>

<style scoped>

</style>
