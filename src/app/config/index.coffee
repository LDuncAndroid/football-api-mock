fileLoader = require('../file-loader')

generalConfigFilePath = './etc/general-config.yaml'
dataConfigFilePath = './etc/data-format-config.yaml'
dataFilePath = './etc/match-reports-1.yaml'

module.exports = (app) ->

    generalConfig = fileLoader.loadYAML(generalConfigFilePath)
    app.set(generalSetting, generalConfig[generalSetting]) for generalSetting of generalConfig

    dataFormatConfig = fileLoader.loadYAML(dataConfigFilePath)
    app.set(dataFormatSetting, dataFormatConfig[dataFormatSetting]) for dataFormatSetting of dataFormatConfig

    unformattedData = fileLoader.loadYAML(dataFilePath)
    app.set('data', unformattedData)