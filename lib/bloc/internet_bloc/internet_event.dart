// We are making this class as abstract because we will not use this event anywhere
abstract class InternetEvent{}


// Internet lost event
class InternetLostEvent extends InternetEvent{}

// Internet back event
class InternetGainedEvent extends InternetEvent{}