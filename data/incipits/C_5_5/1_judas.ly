\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    e'1
    c2 a
    d1
    h2 c~
    c h
    c1~
    c
    h2. h4
    a2 r
    h1
  }
}

SopranoLyrics = \lyricmode {
  Ju --
  das mer --
  ca --
  tor pes --
  si --
  mus, __

  pes -- si --
  mus,
  "il -"
o -- scu -- lo pe -- ti -- it Do -- mi -- num:
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    r1
    e
    f2 f
    g g
    g2. g4
    g2 g~
    g4 g g2
    f g4 g
    a2. a4
    gis1
  }
}

AltoLyrics = \lyricmode {
  Ju --
  das mer --
  ca -- tor
  pes -- si --
  mus o --
  scu -- lo
  pe -- ti -- it
  Do -- mi --
  num:
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1
    a
    a2 d
    d e
    d2. d4
    e2 e~
    e4 e e2
    d d4 d
    c2 d
    e1
  }
}

TenoreLyrics = \lyricmode {
  Ju --
  das mer --
  ca -- tor
  pes -- si --
  mus o --
  scu -- lo
  pe -- ti -- it
  Do -- mi --
  num:
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1
    a'
    f2 d
    g c,
    g2. g4
    c2 c~
    c4 c c2
    d e4 e
    f2. f4
    e1
  }
}

BassoLyrics = \lyricmode {
  Ju --
  das mer --
  ca -- tor
  pes -- si --
  mus o --
  scu -- lo
  pe -- ti -- it
  Do -- mi --
  num:
}

Organo = {
  \relative c {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro"
    e''1
    \clef bass a,,
    f2 d
    g c,
    g1
    c
    c
    d2 e
    f1
    e
  }
}

BassFigures = \figuremode {
  r1
  r
  <6>
  r
  <4>2 <3>
  r1
  r
  <6>
  <5>2 <6>
  <_+>1
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
