import numpy

class env:
    def __init__(self):
        self.x_range = 100
        self.y_range = 100
        self.motions = [(-1, 0), (-1, 1), (0, 1), (1, 1),
                        (1, 0), (1, -1), (0, -1), (-1, -1)]
        self.obs = self.obs_map()

    def update_obs(self, obs):
        self.obs = obs
        
    def obs_map(self):
        x = self.x_range
        y = self.y_range
        obs = set()

        for i in range(x):
            obs.add((i, 0))
        for i in range(x):
            obs.add((i, y - 1))

        for i in range(round(self.y_range/2 - 5)):
            obs.add((0, i))
        for i in range(round(self.y_range/2 + 1), round(self.y_range)):
            obs.add((0, i))
            
        for i in range(y):
            obs.add((x - 1, i))
            
        for i in range(20,30):
            obs.add((i, -i+90))
            
        for i in range(20,40):
            obs.add((i, 0.5*i+60))
        
        for i in range(40,50):
            obs.add((i, -1.5 * i + 140))
            
        for i in range(30,50):
            obs.add((i, 0.25* i + 52.5))

        for i in range(20,35):
            obs.add((25,i))

        for i in range(22,45):
            obs.add((45,i))
            
        for i in range(25,45):
            obs.add((i, 0.1 * i +17.5))
        
        for i in range(25,45):
            obs.add((i, 0.5*i +22.5))
            
        for i in range(70,80):
            obs.add((i, -1.5*i + 155))
            
        for i in range(80,85):
            obs.add((i, 3*i - 205))
            
        for i in range(75,85):
            obs.add((i, -1.5*i + 177.5))
            
        for i in range(70,75):
            obs.add((i,3*i - 160))
            
        return obs