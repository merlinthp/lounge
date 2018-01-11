"use strict";

const Chan = require("../../models/chan");
const Msg = require("../../models/msg");

exports.commands = ["invite"];

exports.input = function(network, chan, cmd, args) {
	if (args.length === 2) {
		network.irc.raw("INVITE", args[0], args[1]); // Channel provided in the command
	}	else if (args.length === 1 && chan.type === Chan.Type.CHANNEL) {
		network.irc.raw("INVITE", args[0], chan.name); // Current channel
	} else {
		chan.pushMessage(this, new Msg({
			type: Msg.Type.ERROR,
			text: `${cmd} command can only be used in channels or by specifying a target.`,
		}));
	}
};
