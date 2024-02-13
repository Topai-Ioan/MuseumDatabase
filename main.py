import pyodbc 
import seaborn as sns
import matplotlib.pyplot as plt

class MSSQLConnection:
    def __init__(self, host, port, database):
        self.host = host
        self.port = port
        self.database = database

    def openConnection(self):
        try:
            self.db = pyodbc.connect(f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={self.host};DATABASE={self.database};Trusted_Connection=yes;')
            self.cursor = self.db.cursor()
            print("Connection open!")
        except Exception as e:
            print("Connection not open!")
            print(e)

    def closeConnection(self):
        try:
            self.cursor.close()
            self.db.close()
            print("Connection close!")
        except Exception as e:
            print("Connection not closed!")
            print(e)

    def GetTotalProfitOnEventsInRange(self, start_year, end_year):
        try:
            cmd = "EXEC dbo.GetTotalSpentOnEventsInRange @p_StartYear=?, @p_EndYear=?;"
            return self.cursor.execute(cmd, start_year, end_year).fetchall()
        except Exception as e:
            print(e)

    def plotProfits(self, start_year, end_year):
        data = self.GetTotalProfitOnEventsInRange(start_year, end_year)
        years = [str(year) for year in range(start_year, end_year + 1)]
        profits = [sum(elem[3] for elem in data if elem[4] == year) for year in range(start_year, end_year + 1)]

        plt.bar(years, profits)
        plt.xlabel('Year')
        plt.ylabel('Total Profits')
        plt.title('Total Profits Over the Years')
        plt.show()

    def GetCuratorPerformanceByYear(self, year):
        try:
            cmd = "EXEC dbo.GetCuratorPerformanceByYear @p_year=?;"
            return self.cursor.execute(cmd,  year).fetchall()
        except Exception as e:
            print(e)

    def plotCuratorPerformance(self, year):
        data = self.GetCuratorPerformanceByYear(year)
        curators = [elem[1] for elem in data]
        revenue = [float(elem[3]) for elem in data] 

        plt.bar(curators, revenue)
        plt.xlabel('Curator')
        plt.ylabel('Total Revenue')
        plt.title('Curator Performance for the Year ' + str(year))

        plt.xticks(fontsize=8)
        plt.show()

    def GetArtworkCountsPerGenre(self, numberOfArts):
        try:
            cmd = "EXEC dbo.GetArtworkCountsPerGenre @numberOfArts=?;"
            return self.cursor.execute(cmd,  numberOfArts).fetchall()
        except Exception as e:
            print(e)

    def plotArtworkCountsPerGenre(self, numberOfArts):
        data = self.GetArtworkCountsPerGenre(numberOfArts)
        artists = sorted((elem[0] for elem in data))
        genres = sorted(set(elem[1] for elem in data))

        counts_dict = {(artist, genre): 0 for artist in artists for genre in genres}
        for elem in data:
            counts_dict[(elem[0], elem[1])] = elem[2]

        fig, ax = plt.subplots(figsize=(10, 5))
        
        palette = sns.color_palette("Set2", len(genres))
        
        for i, artist in enumerate(artists):
            for j, genre in enumerate(genres):
                if (artist, genre) in counts_dict:
                    ax.bar(i, counts_dict[(artist, genre)], color=palette[j])

        ax.set_xticks(range(len(artists)))
        ax.set_xticklabels(artists, rotation=10, fontsize=8)

        legend_labels = []
        for i, genre in enumerate(genres):
            legend_labels.append(f'{genre}')

        plt.legend(legend_labels, title='Genre', loc='upper right')
        ax.set_xlabel('Artist', fontsize=10)
        ax.set_ylabel('Artwork Count', fontsize=10)
        plt.show()


if __name__ == "__main__":
    oc = MSSQLConnection('(localdb)\\HR', 1433, 'Muzeu')
    oc.openConnection()

    oc.plotProfits(2023,2027)

    oc.plotCuratorPerformance(2027)

    oc.plotArtworkCountsPerGenre(1)

    oc.closeConnection()