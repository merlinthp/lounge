"use strict";

exports.commands = ["ctcp"];

exports.input = function(network, chan, cmd, args) {
	if (args.length > 1) {
		network.irc.ctcpRequest(args[0], args.slice(1).join(" "));
	}
};
