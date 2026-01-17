\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai"
    R1*3
    r2 g'4. g8
    f4 f g4. g8
    as4 as r2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai"
    R1*3
    r2 c4. c8
    d4 d e4. e8
    f4 f, r2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai"
    g'16-!\p c( h) c-! g-! es'( d) es-! as,2
    des,16-! g( f) g-! e-! des'( c) \hA e,-! f2~
    f4~ f16 es-! f( d) es4~ es16 d-! es( c)
    d2\trill c16-!\f c'( h) c-! g-! es'( d) es-!
    as,2 des,16-! g( f) g-! e-! des'( c) \hA e,-!
    f2 c16-! f( e f) c-! as'( g \hA as)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai"
    r2 f16\p as( g) \hA as-! d,-! d'( c) d-!
    e,2 c16-! as'( g) \hA as-! f-! c'( d) c-!
    h8 c\trill d4~ d16 c d h c4~
    c16 h c a \hA h4\trill c r
    f,16-!\f as( g) \hA as-! d,-! d'( c) d-! e,2
    c r16 as( g \hA as) r c( b c)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai" \autoBeamOff
    R1*3
    r2 es'4.^\tutti es8
    d4 d des4. des8
    c4 c r2
  }
}

SopranoLyrics = \lyricmode {
  Mi -- se --
  re -- re me -- i,
  De -- us,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai" \autoBeamOff
    R1*3
    r2 g'4.^\tutti g8
    f4 f g4. g8
    as4 as r2
  }
}

AltoLyrics = \lyricmode {
  Mi -- se --
  re -- re me -- i,
  De -- us,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai" \autoBeamOff
    R1*3
    r2 c4.^\tutti c8
    d4 d e4. e8
    f4 f, r2
  }
}

TenoreLyrics = \lyricmode {
  Mi -- se --
  re -- re me -- i,
  De -- us,
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai" \autoBeamOff
    R1*3
    r2 c4.^\tutti c8
    c4 h b4. b8
    as4 as r2
  }
}

BassoLyrics = \lyricmode {
  Mi -- se --
  re -- re me -- i,
  De -- us,
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio assai"
    \mvTr c8(-.\p-\solo c-. c-. c-.) c(-. c-. h-. h-.)
    b(-. b-. b-. b-.) as(-. as-. as-. as-.)
    g(-. g-. g-. g-.) g(-. g-. g-. g-.)
    g(-. g-. g-. g-.) \mvTr c2\f-\tutti
    c4 h b2
    as r
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  <6- 4 2>4 <7- 5> <6 4! _->2
  <6>1
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
