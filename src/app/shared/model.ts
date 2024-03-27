export interface ModelPrefecture {
    id : string,
    prefecture : string,
    sousPref : string,
    indicatif : string
    motifs : ModelMotif []
}

export interface ModelMotif {
    motif : string,
    lien : string
}
