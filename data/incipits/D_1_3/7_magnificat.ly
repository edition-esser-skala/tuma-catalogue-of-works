\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    r4 h' h8. h16 h4
    d4. d8 e4 d
    c4. c8 h2\fermata
    \tempoMarkup "Allegro" r8 g d'16 c h a h a h c d c h a
    h8 d'16 h g8 d e d c4~
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    r4 g' g8. g16 g4
    g4. g8 g4 g~
    g fis g2\fermata \tempoMarkup "Allegro"
    r8 g d'16 c h a h a h c d c h a
    h8 d'16 h g8 d e4. e,8
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 h'^\tutti h8. h16 h4
    d d8 d e4 d
    c4. c8 h2\fermata
    \tempoMarkup "Allegro" r8 g d'16[ c] h[ a] h[ a] h[ c] d[ c] h a
    h[ a] h8 r d e d c8. c16
  }
}

SopranoLyrics = \lyricmode {
  Ma -- gni -- fi -- cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o sa -- "lu -"
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 g'^\tutti g8. g16 g4
    g g8 g g4 g
    g fis8. fis16 g2\fermata
    \tempoMarkup "Allegro" r8 g a fis g g a fis16 fis
    g8 g r g g g a8. a16
  }
}

AltoLyrics = \lyricmode {
  Ma -- gni -- fi -- cat
  a -- ni -- ma me -- a
  Do -- _ mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o sa -- "lu -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 d^\tutti e8. e16 e4
    d d8 d c4 d
    e8[ d] c8. c16 d2\fermata
    \tempoMarkup "Allegro" r8 d d d d d d d16 d
    d8 d r d g, a16[ h] c8. c16
  }
}

TenoreLyrics = \lyricmode {
  Ma -- gni -- fi -- cat
  a -- ni -- ma me -- a
  Do -- _ mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o sa -- "lu -"
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 g'^\tutti e8. e16 e4
    h h8 h c4 h
    a4. a8 g2\fermata
    \tempoMarkup "Allegro" r8 g' fis d g g fis d16 d
    g8 g, r h c h a8. a16
  }
}

BassoLyrics = \lyricmode {
  Ma -- gni -- fi -- cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o sa -- "lu -"
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    r4 g'-\tutti e2
    h c4 h
    a2 g\fermata
    \tempoMarkup "Allegro" r8 g' fis d g4 fis8 d
    g g, r h c h a4
  }
}

BassFigures = \figuremode {
  r1
  <6>2. q4
  <7> <6>2.
  r1
  r
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
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
