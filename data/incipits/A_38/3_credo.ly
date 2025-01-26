\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    g''4 g8 g a f g4
    g8 r r4 r2
    e4 r r2
    r d4 e
    e r f2
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    e'4 d8 e c4 d
    e8 r r4 r2
    c4 r r2
    r g4 c
    c r d2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    e'4 d8 e c4 d\trill
    e8 g16 e a4 r16 f( e d) g4
    r8 e16 c g'4 r16 e( d c) e4
    r8 f16 d a'4 r8 d,16 h g'4
    r8 c,16 a e'4 r8 a16 f d'4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c'4 h8 c c4 c8 h
    c r r e16( c) a4 r16 d( c h)
    e4 r8 e16 c a'4 r16 e a( g)
    f4 r16 a, d( c) h4 r8 g'16 h
    c4 r8 c,16 a f'4 r8 f16 a
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c'4^\tutti h8 c c c c[ h]
    c r r4 r2
    R1*2
    c8 c a c d4. c16[ d]
  }
}

SopranoLyrics = \lyricmode {
  Cre -- do in u -- num De --
  um,

  et ex Pa -- tre na -- tum
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    g'4^\tutti g8 g a e16[ f] g4
    g8 r r4 r2
    r8 g g e a4. g16 a
    f8 d f4 d8 g g4
    e r a a8 a
  }
}

AltoLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem,
  fa -- cto -- rem coe -- li et
  ter -- rae, coe -- li et ter --
  rae, De -- um de
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    e4^\tutti d8 e d c d4
    e8 r r4 r2
    r c8 c a c16 c
    d4. c16 d h8 h g h
    c8. c16 c4 r2
  }
}

TenoreLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem,
  vi -- si -- bi -- li -- um
  o -- mni -- um et in -- vi -- si --
  bi -- li -- um,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c4^\tutti g'8 e f a g4
    c,8 r r4 r2
    R1
    r2 g'8 g e g
    a4. g16 a f4. d8
  }
}

BassoLyrics = \lyricmode {
  Cre -- do in u -- num De --
  um,

  et in u -- num
  Do -- mi -- num Je -- sum
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c4 g'8 e f a g g,
    c r r c'16 a d4 r16 h( a g)
    c4 r \clef tenor c a8 c
    d4. c16 d \clef bass g,4 e8 g
    a4. g16 a f4 d8 f
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
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
        \set Staff.instrumentName = "S"
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
  >>
}
