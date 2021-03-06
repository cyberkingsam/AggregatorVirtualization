import time

class Timer(object): 
    def __init__(self):
        self.start_time = None
        self.stop_time = None
    
    def start(self):
        self.start_time = time.time()

    def restart(self):
        self.start_time = time.time()

    def stop(self):
        self.stop_time = time.time()
    
    @property
    def time_elapsed(self):
        assert not self.stop_time, \
            "Can't check `time_elapsed` on an ended `Stopwatch`."
        return time.time() - self.start_time