import { getMedusaVersion } from "medusa-core-utils"

export const getLocalMedusaVersion = (): string => {
  return getMedusaVersion()
}

function doSomething() {
  return 0
}