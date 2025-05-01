\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    e'4 r f8\p r g, r
    g r r4 a8 r a r
    h r g r c r d r
    d c4 a8 h4 r
    r r8 e e4 c
    a8 a a4 gis r8 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    g'4 r d8\p r d r
    c r r4 c8 r d r
    d r h r e r a r
    g4 e8 d d4 r4
    r r8 e' e4 c
    a8 a a4 gis r8 e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r4 g'8 c h8. c16 d8 f,
    f e c' e a, h16[ c] d8 c
    h16[ a] g8 d' e c h16 a d8 c
    h a16 g a8 g16 fis g4 r
    r r8 e' e4 c
    a8 a a4 gis r
  }
}

SopranoLyrics = \lyricmode {
  In te Do -- mi -- ne spe --
  ra -- vi, non con -- fun -- dar in ae --
  ter -- num, in iu -- sti -- ti -- a tu -- a
  li -- be -- ra, li -- be -- ra me.
  In -- cli -- na
  au -- rem tu -- am,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*4
    r4 r8 g' g4 e
    e8 e d4 e r8 e
  }
}

AltoLyrics = \lyricmode {
  In -- cli -- na
  au -- rem tu -- am, "ac -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*3
    r4 r8 d^\tutti d4 h8 h
    h4 h8 h c4 c8 c
    c4 h8[ a] h4 r
  }
}

TenoreLyrics = \lyricmode {
  In -- cli -- na, in --
  cli -- na ad me au -- rem
  tu -- _ am,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*3
    r2 r4 r8 g'
    g4 e8 e c4 c8 c
    f2 e4 r
  }
}

BassoLyrics = \lyricmode {
  In --
  cli -- na ad me au -- rem
  tu -- am,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c4 r d h
    c r f fis
    g h, a fis
    g8 e' c d g,4 r8 g'-\tutti
    g4 e c2
    f e4 r8 \clef soprano e'-!
  }
}

BassFigures = \figuremode {
  r2 <6>4 q8 <5>
  <5 4> <\t 3> r2 <6>8 <5>
  r4 <6> <5> r
  r8 r <6 5> <_+>2 <3>8
  q4 <5>2.
  <7>4 <6> <_+>2
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
    \new FiguredBass { \BassFigures }
  >>
}
