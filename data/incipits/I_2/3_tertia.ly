\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    c'16( f,) f8 r4 b16( e,) e8 r g
    as16( b) g( as) b( c) as( b) g( as) f( g) as( b) g( as)
    f( g) e( f) g( as) f( g) e c' des( c) f( e) as( g)
    b( as) e( f) \grace as,8 g4\trill f c'16\p f, f8
    r4 des'16( f,) f8 r4 c'16( f,) f8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    r4 c'16( f,) f8 r4 b16( e,) e8
    c4 r8 f'~ f16 b, b8 r es
    es16 as, as8 r des~ des16 g, g8 r16 g c b
    des( c) b( as) \grace f8 e4\trill c'16(\p f,) f8 r4
    des'16( f,) f8 r4 c'16 f, f8 r4
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*3
    r2 c4.^\solo c8
    des2 c4. c8
  }
}

TenoreLyrics = \lyricmode {
  Ma -- nus
  tu -- ae "fe -"
}

Organo = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    f8-\solo g as as g g e c
    f es des b es des c as
    des c b g c2~-\tasto
    c4 c'8 c, f, g as f
    b c des b f' g as f
  }
}

BassFigures = \figuremode {
  r4 <6> <6!>2
  r4 <6>8 <7>4. <6>8 <7>
  r4 <6>8 <7> <_!>2
  r4 <4>8 <_!> r2
  <_->1
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
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
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
