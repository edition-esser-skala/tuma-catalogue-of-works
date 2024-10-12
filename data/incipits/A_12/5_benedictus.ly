\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "[no tempo]"
    r2 h'^\solo h
    c h a
    g4 fis e2 h'
    h cis cis
    d4. d,8 d2 r
    r r e'
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- _ nit in
  no -- mi -- ne
  Do -- mi -- ni,
  qui
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "[no tempo]"
    R1.*2
    r2 e^\solo e
    g fis e
    d4 cis? h2 h'
    gis2. fis4 gis2
  }
}

BassoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- _ nit in
  no -- mi -- ne
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "[no tempo]"
    e1.-\solo
    e2 dis1
    e1.
    e2 ais,1
    h1.
    e
  }
}

BassFigures = \figuremode {
  r1.
  <2>2 <6> <5>
  r1.
  r
  r
  <_+>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
