//--------------------------------------------------
// Class GroupOptions
//--------------------------------------------------
// Written by Kenvix <i@kenvix.com>
//--------------------------------------------------

package com.kenvix.complexbot

import org.bson.codecs.pojo.annotations.BsonId
import org.litote.kmongo.Id
import org.litote.kmongo.newId

data class GroupOptions(
        @BsonId
        val _id: Id<GroupOptions> = newId(),
        val groupId: Long = -1,
        var inspector: InspectorOptions = InspectorOptions(),
        val welcomeNew: WelcomeNewOptions = WelcomeNewOptions(),
        val disabledCommands: MutableSet<String> = mutableSetOf(),
        val options: MutableMap<String, String> = HashMap()
)

data class InspectorOptions(
        var enabled: Boolean = true,
        val rules: MutableMap<String, String> = mutableMapOf(),
        val white: MutableSet<Long> = mutableSetOf()
)

data class WelcomeNewOptions(
        var enabled: Boolean = false,
        var joinMessage: String = ""
)