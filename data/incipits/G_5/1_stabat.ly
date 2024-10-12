\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Grave"
    c'1~
    c8 des c b as b as g
    f2 g4 \once \tieDashed c~
    c c c h
    c2\fermata r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Grave"
    r2 f8 as g f
    e2 f8 des c b
    as4. as'8 g2
    as4 g f8 as g f
    e2\fermata g4. g8
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key f \dorian \time 4/4 \tempoMarkup "Grave"
    r2 f8 as g f
    e2 f8 des c b
    as4. as'8 g4 g
    as g f8 as g f
    e2\fermata g4. g8
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key f \dorian \time 4/4 \tempoMarkup "Grave"
    R1*2
    c2~ c8 des c b
    as f c'4 des2
    g,\fermata c8 es! d c
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key f \dorian \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    c'2^\tutti c
    c8[ des c b] as[ b as g]
    f2 g4 c~
    c c c h
    c2\fermata r
  }
}

SopranoLyrics = \lyricmode {
  Sta -- bat
  ma -- _
  _ ter do --
  lo -- ro -- _
  sa
}

Alto = {
  \relative c' {
    \clef alto
    \key f \dorian \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    r2 f8[^\tutti as] g[ f]
    e2 f8 des[ c] b
    as4. as'8 g4 g
    as g f8[ as g f]
    e2\fermata g4. g8
  }
}

AltoLyrics = \lyricmode {
  Sta -- bat
  ma -- ter, ma -- ter
  do -- lo -- ro -- sa,
  do -- lo -- ro --
  sa iux -- ta
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \dorian \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    R1*2
    c2~^\tutti c8[ des] c[ b]
    as f c' c des2
    g,\fermata c8[ es!] d[ c]
  }
}

TenoreLyrics = \lyricmode {
  Sta -- bat
  ma -- ter do -- lo -- ro --
  sa iux -- ta
}

Basso = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    R1
    r2 f~^\tutti
    f8[ as] g[ f] e2
    f4 es des2
    c\fermata r
  }
}

BassoLyrics = \lyricmode {
  Sta --
  bat do --
  _ lo -- ro --
  sa
}

Organo = {
  \relative c {
    \clef soprano
    \key f \dorian \time 4/4 \tempoMarkup "Grave"
    << {
      c''2_\tutti c
      c8 des c b
    } \\ {
      r2 f8 as g f
      e2
    } >> \clef bass f,~
    f8 as g f e2
    f4 es des2
    c\fermata \clef tenor << { g''2 } \\ { c,8 es! d! c } >>
  }
}

BassFigures = \figuremode {
  r1
  r2 <5 3>8 <6- 4> <5 3> <4 2>
  r4 <4> <6>8 <7-> <6> <5>
  r4 <6> <7 3>8 <\t 5> <6! 4> <\t 3>
  <_!>1
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
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
