\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
    r2 h' h
    c h a
    g4 fis e2 g
    h cis cis
    d4. d,8 d2 r
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- _ nit in
  no -- mi -- ne
  Do -- mi -- ni,
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
    R1.*2
    r2 e e
    g fis e
    d4 cis h2 h'
  }
}

AltoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- _ nit in
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
    r2 e, e'~
    e dis h
    e e, e'~
    e ais,1
    h h2
  }
}

TenoreLyrics = \lyricmode {
  Be -- _
  _ ne --
  di -- ctus, qui __
  ve --
  nit in
}

Organo = {
  \relative c {
    \clef tenor
    \key e \minor \time 3/2 \tempoMarkup "Adagio"
    e1 e'2~
    e dis h
    e e, e'~
    e ais,1
    h1 h2
  }
}

BassFigures = \figuremode {
  r1.
  <2>2 <6>1
  r1.
  r2 <6> <5>
  r1.
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
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
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
