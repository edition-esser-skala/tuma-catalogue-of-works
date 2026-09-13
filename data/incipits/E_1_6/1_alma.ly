\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    c'4 c, r8 e'16 f g32 f e d c b a g \gotoBar "4"
    c,4 r r2
    r c'16 h32 a g f e d c8 r
    r \tuplet 3/2 8 { a'16 g a } f4 r8 \tuplet 3/2 8 { g16 f g } e4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    r4 c' c, g''32 f e d c b a g \gotoBar "4"
    c,4 r r2
    r c'16 h32 a g f e d c8 r
    r \tuplet 3/2 8 { f16 e f } d4 r8 \tuplet 3/2 8 { e16 d e } c4
  }
}

BassoI = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1 \gotoBar "4"
    c'4^\solo c, r g'8 g
    a d h4\trill c g8 g
    \tuplet 3/2 8 { a16[ g a } f8] f16[ a g f] \tuplet 3/2 8 { g[ f g } e8] e16[ g f e]
  }
}

BassoILyrics = \lyricmode {
  Al -- ma Re -- dem --
  pto -- ris Ma -- ter, Re -- dem --
  pto -- _ _ \hy
}

BassoII = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1 \gotoBar "4"
    r4 c'^\solo c, e8 c
    f d g4 c, e8 e
    \tuplet 3/2 8 { f16[ e f } d8] d16[ f e d] \tuplet 3/2 8 { e[ d e } c8] c16[ e d c]
  }
}

BassoIILyrics = \lyricmode {
  Al -- ma Re -- dem --
  pto -- ris Ma -- ter, al -- ma,
  al -- _ _ \hy
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante"
    c8-\solo d e d c c e e \gotoBar "4"
    c\p d e d c d e c
    f d g g, c4 r
    r8 f f f r c c c
  }
}

BassFigures = \figuremode {
  r4 <6>2 q4
  r2. <6>4
  r <4>8 <3> r2
  r8 <6>2..
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
        \set Staff.instrumentName = "B 1"
        \new Voice = "BassoI" { \dynamicUp \BassoI }
      }
      \new Lyrics \lyricsto BassoI \BassoILyrics

      \new Staff {
        \set Staff.instrumentName = "B 2"
        \new Voice = "BassoII" { \dynamicUp \BassoII }
      }
      \new Lyrics \lyricsto BassoII \BassoIILyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
