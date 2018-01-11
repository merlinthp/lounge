"use strict";

exports.commands = ["raw", "send", "quote"];

exports.input = function(network, chan, cmd, args) {
	if (args.length !== 0) {
		network.irc.raw(args);
	}

	return true;
};
