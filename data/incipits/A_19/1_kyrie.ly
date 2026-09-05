\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    g''4. g8 c,4. c8
    d16 c d e d e f g e d e f e f g a
    d, c d e d e f g c,8 d16 e \pa f4~
    f8 e d4\trill \pd c r
    R1
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*2
    r2 r4 r8 d'
    d c g g e4 r
    R1
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*3
    r8 g' g g g4 r
    R1
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*3
    r8 c g g c4 r
    R1
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*3
    r8 c g g c4 r
    R1
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*3
    r2 g'4.^\solo g8
    c,4. c8 d16[ c d e] d[ e f g]
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri --
  e e -- lei -- \hy
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante"
    c8-\solo c'16 h c8 g a a16 g a8 e
    f d g g, c c'16 h c8 a
    h h16 a h8 g a4 d,8 f
    g c, g' g, c c'16 h c8 g
    a, a'16 g a8 e f d g g,
  }
}

BassFigures = \figuremode {
  r1
  <6 5>
  r2.. <6>8
  r1
  r <6 5>
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \setSoloText "clno 1"
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "tr" "1, 2" }
        \partCombine #'(0 . 10) \TrombaI \TrombaII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = "timp"
      \Timpani
    }
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
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
