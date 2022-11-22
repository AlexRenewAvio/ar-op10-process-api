mule_linter {
    rules {
        /* CICD */
        AZURE_PIPELINES_EXISTS {}

        /* CONFIGURATION */
        API_CONSOLE_DISABLED{}
        COMMENTED_CODE {}
        COMPONENT_ATTRIBUTE_VALUE {
            component = 'flow-ref'
            namespace = 'http://www.mulesoft.org/schema/mule/core'
            requiredAttributes = ['name']
        }
        CONFIG_FILE_NAMING {}
        CONFIG_PLACEHOLDER {
            placeholderAttributes = ['password', 'keyPassword', 'username', 'host']
        }
        DISPLAY_NAME {
            components = [
                    [name: 'set-payload', namespace: "http://www.mulesoft.org/schema/mule/core", displayName: 'Set Payload'],
                    [name: 'set-variable', namespace: "http://www.mulesoft.org/schema/mule/core", displayName: 'Set Variable'],
                    [name: 'transform', namespace: "http://www.mulesoft.org/schema/mule/ee/core", displayName: 'Transform Message'],
                    [name: 'flow-ref', namespace: "http://www.mulesoft.org/schema/mule/core", displayName: 'Flow Reference']
            ]
        }
        EXCESSIVE_LOGGERS {
            excessiveLoggers = [
                    'INFO':3,
                    'DEBUG':2
            ]
        }
        EXCESSIVE_LOGGERS {
            excessiveLoggers = 2
        }
        FLOW_SUBFLOW_NAMING {
            format = 'KEBAB_CASE'
        }
        GLOBAL_CONFIG_NO_FLOWS {
            globalFileName = 'global.xml'
        }
        GLOBAL_CONFIG {
            globalFileName = 'global.xml'
        }
        LOGGER_ATTRIBUTES_RULE {
            requiredAttributes = ['category']
        }
        LOGGER_CATEGORY_HASVALUE {}

        LOGGER_MESSAGE_HASVALUE {}
        MULE_CONFIG_SIZE {
            flowLimit = 2
        }
        ON_ERROR_LOG_EXCEPTION {}
        UNUSED_FLOW {}

        /* MULE ARTIFACT */
        MULE_ARTIFACT_SECURE_PROPERTIES {
            properties = [
                    'anypoint.clientSecret'
            ]
            includeDefaults = false
        }
        MULE_ARTIFACT_MIN_MULE_VERSION {}

        /* POM */
        MULE_RUNTIME {
            version = '4.4.0'
        }
        MUNIT_MAVEN_PLUGIN_ATTRIBUTES {
            coverageAttributeMap =[
                    'runCoverage':'true',
                    'requiredApplicationCoverage':'70',
                    'requiredResourceCoverage':'70',
                    'requiredFlowCoverage':'70'
            ]
            includeDefaults = false
        }

        POM_EXISTS {}
        POM_PLUGIN_ATTRIBUTE {
            groupId = 'org.mule.tools.maven'
            artifactId = 'mule-maven-plugin'
        }

        /* PROPERTY */
        ENCRYPTED_VALUE {}
        HOSTNAME_PROPERTY {
            exemptions = []
        }
        PROPERTY_EXISTS {
            environments = ['dev', 'qa', 'uat', 'prod']
            pattern = '${env}.properties'
            propertyName = 'api.id'
        }
        PROPERTY_FILE_NAMING {
            environments = ['local', 'dev', 'qa', 'uat', 'prod']
            pattern = '${env}.properties'
        }
        SECURE_PROPERTY_FILE_NAMING {
            environments = ['local', 'dev', 'qa', 'uat', 'prod']
            pattern = 'secure/properties/${env}-secure.properties'
        }
        PROPERTY_FILE_COUNT_MISMATCH {
            environments = ['local', 'dev', 'qa', 'uat', 'prod']
            pattern = 'properties/${env}.properties'
        }
        SECURE_PROPERTY_FILE_COUNT_MISMATCH {
            environments = ['local', 'dev', 'qa', 'uat', 'prod']
            pattern = 'secure/properties/${env}-secure.properties'
        }

        /* README */
        README {}

    }
}
