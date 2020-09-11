//--------------------------------------------------
// Class AutoAcceptFriendRequest
//--------------------------------------------------
// Written by Kenvix <i@kenvix.com>
//--------------------------------------------------

package com.kenvix.complexbot.feature.friend

import com.kenvix.complexbot.BotFeature
import com.kenvix.complexbot.callBridge
import com.kenvix.complexbot.isBotSystemAdministrator
import net.mamoe.mirai.Bot
import net.mamoe.mirai.event.events.FriendAddEvent
import net.mamoe.mirai.event.events.NewFriendRequestEvent
import net.mamoe.mirai.event.subscribeAlways

object AutoAcceptFriendRequest : BotFeature {
    override fun onEnable(bot: Bot) {
        bot.subscribeAlways<NewFriendRequestEvent> {
            if (callBridge.config.bot.acceptAllFriendRequest  || isBotSystemAdministrator(this.fromId))
                this.accept()
            else
                this.reject(false)
        }

    }
}