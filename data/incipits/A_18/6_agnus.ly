\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    r2 r8 a''16(\p b) c8-! f,-!
    r f e f \grace f e4 r
    r8 f16( g) a8-! d,-! r c'4 h8
    c4 r r8 e,16( f) g8-! c,-!
    r c'4 h8 c4 r8 f,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    r2 r8 f'\p f c
    r2 r4 c~
    c d4. e8 g,4
    g r r8 g16( f) e4
    r r8 g~ g e r4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*5
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*3
    r4 g'8 c a g r c
    a g16 a f[ a] g[ f] e8 c f es
  }
}

AltoLyrics = \lyricmode {
  A -- gnus De -- i, qui %4
  tol -- lis pec -- ca -- ta mun -- di: Mi -- "se -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 c8 f d c r f
    d c16 d b8 a a g c b
    b a d c h c16[ d] d4
    c r r2
    R1
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta mun -- di: Mi -- se --
  re -- re, mi -- se -- re -- re no --
  bis.
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*5
  }
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    f8 g a f b f16 g a8 a
    b a g f c4 e
    f fis g8 c, g' g,
    c d e c f c16 d e8 c
    f e d g c,4 a
  }
}

BassFigures = \figuremode {
  r1
  r4 <6> <6 4>8 <5 3> <6> <5->
  <4-> <3> <6>2.
  r1
  r4 <7>2 <6>8 <5->
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
