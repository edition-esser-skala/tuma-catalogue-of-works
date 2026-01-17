\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \phrygian \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    h'2^\tutti c
    c( h)
    c1\fermata \bar "||"
    c2 e
    d1
    e\fermata \bar "||"
    e2 e
    d d
    c2. c4
    h1\fermata \bar "||"
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key e \phrygian \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    e2^\tutti e
    f1
    e\fermata \bar "||"
    f2 g
    g1
    g\fermata \bar "||"
    g2 g
    g g
    e2. e4
    e1\fermata \bar "||"
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \phrygian \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    g2^\tutti g
    a( g4 f)
    g1\fermata \bar "||"
    a2 c
    c( h)
    c1\fermata \bar "||"
    c2 c
    h h
    a2. a4
    gis1\fermata \bar "||"
  }
}

Basso = {
  \relative c {
    \clef bass
    \key e \phrygian \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    e2^\tutti e
    d1
    c\fermata \bar "||"
    f2 e
    g1
    c,\fermata \bar "||"
    c2 c
    g' g
    a a,
    e'1\fermata \bar "||"
  }
}

SATBLyrics = \lyricmode {
  Pan -- ge,
  lin --
  gua,
  glo -- ri --
  o --
  si
  cor -- po --
  ris my --
  ste -- ri --
  um,
}

Organo = {
  \relative c {
    \clef bass
    \key e \phrygian \time 2/2 \tempoMarkup "[no tempo]"
    e1-\tutti
    d
    c\fermata \bar "||"
    f2 e
    g1
    c,\fermata \bar "||"
    c2 c
    g' g
    a a,
    e'1\fermata \bar "||"
  }
}

BassFigures = \figuremode {
  <5>2 <6>
  <7> <6>
  <8>1
  <5>2 <8 6>
  <5 4> <\t 3>
  <3>1
  r
  <5>2 <\t>
  <3> <\t>
  <5 _+>1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SATBLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \SATBLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \SATBLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \SATBLyrics
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
