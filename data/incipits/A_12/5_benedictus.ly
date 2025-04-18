\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 3/2 \autoBeamOff \tempoMarkup "Andante"
    R1.*2
    r4 d' b c d b
    r c a b c a
    b2 r r
    R1.
  }
}

SopranoLyrics = \lyricmode {
  Qui ve -- _ _ _
  _ _ _ _ _
  nit,
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 3/2 \autoBeamOff \tempoMarkup "Andante"
    r2 g' g
    g fis4 e \hA fis2
    g4 fis g2 r
    R1.
    r2 g b
    b a4 g a2
  }
}

AltoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, _ qui
  ve -- _ nit,

  be -- ne --
  di -- ctus, _ qui
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 3/2 \autoBeamOff \tempoMarkup "Andante"
    R1.*2
    r4 b g a b g
    r a fis g a \hA fis
    g2 r r
    R1.
  }
}

TenoreLyrics = \lyricmode {
  Qui ve -- _ _ _
  _ _ _ _ _
  nit,
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 3/2 \autoBeamOff \tempoMarkup "Andante"
    r2 g' b
    a d, a'
    b g, r
    R1.
    r2 b' b
    c f, c'
  }
}

BassoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- nit,

  be -- ne --
  di -- ctus, qui
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 3/2 \tempoMarkup "Andante"
    g1.
    d'
    g,1 g'2
    c, d1
    g,2 g' d
    es f f,
  }
}

BassFigures = \figuremode {
  r1.
  <5 4>2 <\t _+> <7 \t>
  r1.
  <6 5>2 <_+>1
  r <6>2
  <6 5> <4> <3>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "vla" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

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
