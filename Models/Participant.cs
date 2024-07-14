namespace TuPencaUy.Models;

public class Participant(
    string name,
    string email,
    int points,
    int predictedMatches,
    int hits,
    int partialHits,
    int hitsPercentage,
    int partialHitsPercentage)
{
    public string Name { get; set; } = name;
    public string Email { get; set; } = email;
    public int Points { get; set; } = points;
    public int PredictedMatches { get; set; } = predictedMatches;
    public int Hits { get; set; } = hits;
    public int PartialHits { get; set; } = partialHits;
    public decimal HitsPercentage { get; set; } = hitsPercentage;
    public decimal PartialHitsPercentage { get; set; } = partialHitsPercentage;
    public string HitsVsTotal => $"Aciertos exactos: {Hits}/{PredictedMatches}";
    public string PartialHitsVsTotal => $"Aciertos parciales: {PartialHits}/{PredictedMatches}";
    public string AccuracyPercentage => $"Precisión: {HitsPercentage*100}%";
}