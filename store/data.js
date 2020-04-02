import axios from 'axios'
import Data from '@/data/data.json'

export const state = () => ({
  data: Data
})

export const mutations = {
  getData(state, payload) {
    state.data = payload.data
  }
}

export const actions = {
  async getDataAction(context) {
    const payload = {
      data: Data
    }
    await axios.get(process.env.dataUrl).then(res => {
      // payload.data.contacts = res.data.contacts
      // payload.data.inspections = res.data.inspections
      payload.data.inspections_summary = res.data.inspections_summary
      payload.data.patients_summary = res.data.patients_summary
      payload.data.patients = res.data.patients
      payload.data.querents = res.data.querents
      payload.data.lastUpdate = res.data.lastUpdate
    })
    context.commit('getData', payload)
  }
}
